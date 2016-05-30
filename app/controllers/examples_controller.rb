class ExamplesController < InheritedResources::Base

  private

    def example_params
      params.require(:example).permit(:my_file)
    end
end

